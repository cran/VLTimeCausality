## -----------------------------------------------------------------------------
library(VLTimeCausality)
# Generate simulation data
TS <- VLTimeCausality::SimpleSimulationVLtimeseries()
# Run the function
out<-VLTimeCausality::GrangerFunc(Y=TS$Y,X=TS$X,alpha=0.05)
#result
print(sprintf("F-TEST p-value = %f",out$p.val))
print(sprintf("X causes Y? %d",out$XgCsY_ftest))

## -----------------------------------------------------------------------------
library(VLTimeCausality)
# Generate simulation data
TS <- VLTimeCausality::SimpleSimulationVLtimeseries()
# Run the function
out<-VLTimeCausality::VLGrangerFunc(Y=TS$Y,X=TS$X,gamma=0.5)
#result
print(sprintf("BICDiffRatio = %f",out$BICDiffRatio))
print(sprintf("X causes Y? %d",out$XgCsY))

## -----------------------------------------------------------------------------
library(VLTimeCausality)
# Generate simulation data
TS <- VLTimeCausality::SimpleSimulationVLtimeseries()
# Run the function
out<-VLTimeCausality::VLTransferEntropy(Y=TS$Y,X=TS$X,VLflag=FALSE)
#result
print(sprintf("TEratio = %f",out$TEratio))
print(sprintf("X causes Y? %d",out$XgCsY_trns) )

## -----------------------------------------------------------------------------
library(VLTimeCausality)
# Generate simulation data
TS <- VLTimeCausality::SimpleSimulationVLtimeseries()
# Run the function
out<-VLTimeCausality::VLTransferEntropy(Y=TS$Y,X=TS$X,VLflag=TRUE)
#result
print(sprintf("TEratio = %f",out$TEratio))
print(sprintf("X causes Y? %d",out$XgCsY_trns) )

