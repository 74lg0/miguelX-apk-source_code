.class public final synthetic Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;->f$0:Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    iput-object p2, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final setBit(I)V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;->f$0:Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    iget-object v1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    invoke-virtual {v0, v1, p1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->lambda$cpuSetFromCPUListString$0$com-mojang-minecraftpe-hardwareinfo-CPUTopologyInfo(Ljava/util/Set;I)V

    return-void
.end method
