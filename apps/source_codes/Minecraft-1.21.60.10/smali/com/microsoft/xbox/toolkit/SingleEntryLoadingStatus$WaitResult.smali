.class public Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;
.super Ljava/lang/Object;
.source "SingleEntryLoadingStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitResult"
.end annotation


# instance fields
.field public error:Lcom/microsoft/xbox/toolkit/XLEException;

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field public waited:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;ZLcom/microsoft/xbox/toolkit/XLEException;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->this$0:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->waited:Z

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->error:Lcom/microsoft/xbox/toolkit/XLEException;

    return-void
.end method
