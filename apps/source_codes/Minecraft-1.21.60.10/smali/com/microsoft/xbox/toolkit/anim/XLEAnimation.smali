.class public abstract Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
.super Ljava/lang/Object;
.source "XLEAnimation.java"


# instance fields
.field protected endRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation$1;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->endRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->endRunnable:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public abstract setTargetView(Landroid/view/View;)V
.end method

.method public abstract start()V
.end method
