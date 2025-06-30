.class public Lcom/microsoft/xal/browser/IntentHandler;
.super Landroid/app/Activity;
.source "IntentHandler.java"


# instance fields
.field private final m_logger:Lcom/microsoft/xal/logging/XalLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "IntentHandler"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xal/browser/IntentHandler;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/IntentHandler;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v0, "onCreate() New intent received."

    invoke-virtual {p1, v0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/IntentHandler;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/microsoft/xal/browser/IntentHandler;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/IntentHandler;->finish()V

    return-void
.end method
