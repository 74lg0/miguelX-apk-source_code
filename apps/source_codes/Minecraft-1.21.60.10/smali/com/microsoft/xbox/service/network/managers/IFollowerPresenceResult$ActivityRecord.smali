.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRecord"
.end annotation


# instance fields
.field public broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

.field public richPresence:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
