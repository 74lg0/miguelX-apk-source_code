.class public Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/util/ErrorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResult"
.end annotation


# instance fields
.field private final tryAgain:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->tryAgain:Z

    return-void
.end method


# virtual methods
.method public isTryAgain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->tryAgain:Z

    return v0
.end method
