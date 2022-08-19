multibranchPipelineJob("example") {
  displayName("Jenkins Job DSL Test")
  branchSources {
    branchSource {
      buildStrategies {
        
      }
      source {
        bitbucket {
          id("bitbucket-jenkinstest")
          repoOwner("RetroBug")
          repository("jenkinstest")
          traits {
            bitbucketBranchDiscovery {
              strategyId(3) 
            }
          }
        }
      }
    }
  }
  orphanedItemStrategy {
    discardOldItems {
      numToKeep(1)
    }
  }
  triggers {
    periodicFolderTrigger {
      interval('2d')
    }
  }
}
