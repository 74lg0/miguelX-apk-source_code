.class public Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedUser;
.super Ljava/lang/Object;
.source "MutedListResultContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutedUser"
.end annotation


# instance fields
.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedUser;->xuid:Ljava/lang/String;

    return-void
.end method
