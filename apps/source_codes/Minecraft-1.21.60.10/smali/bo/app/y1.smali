.class public interface abstract Lbo/app/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0008\u001a\u00020\u0002H&J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H&J\u0008\u0010\u000f\u001a\u00020\u0002H&J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H&J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H&J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\tH&J\u0008\u0010\u0017\u001a\u00020\u0002H&J\u0018\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH&J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH&J\"\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0008\u0008\u0002\u0010 \u001a\u00020\u001fH&R\u001c\u0010!\u001a\u00020\u000b8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008\u000f\u0010#R\u001c\u0010%\u001a\u00020\u000b8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010\"\"\u0004\u0008\u000c\u0010#R\u0016\u0010(\u001a\u0004\u0018\u00010&8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006)\u00c0\u0006\u0001"
    }
    d2 = {
        "Lbo/app/y1;",
        "",
        "",
        "d",
        "Landroid/app/Activity;",
        "activity",
        "openSession",
        "closeSession",
        "e",
        "Lbo/app/w1;",
        "event",
        "",
        "a",
        "",
        "throwable",
        "b",
        "Lbo/app/w3$a;",
        "respondWithBuilder",
        "Lbo/app/z1;",
        "request",
        "Lcom/braze/models/IBrazeLocation;",
        "location",
        "geofenceEvent",
        "refreshFeatureFlags",
        "Lbo/app/s5;",
        "templatedTriggeredAction",
        "Lbo/app/s2;",
        "triggerEvent",
        "",
        "lastCardUpdatedAt",
        "lastFullSyncAt",
        "",
        "retryCount",
        "isOutboundNetworkRequestsOffline",
        "()Z",
        "(Z)V",
        "c",
        "shouldRequestTriggersInNextRequest",
        "",
        "()Ljava/lang/String;",
        "userId",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static synthetic a(Lbo/app/y1;JJIILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lbo/app/y1;->a(JJI)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: requestContentCardsSync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(JJI)V
.end method

.method public abstract a(Lbo/app/s2;)V
.end method

.method public abstract a(Lbo/app/s5;Lbo/app/s2;)V
.end method

.method public abstract a(Lbo/app/w3$a;)V
.end method

.method public abstract a(Lbo/app/z1;)V
.end method

.method public abstract a(Lcom/braze/models/IBrazeLocation;)V
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Lbo/app/w1;)Z
.end method

.method public abstract b()V
.end method

.method public abstract b(Lbo/app/w1;)V
.end method

.method public abstract b(Ljava/lang/Throwable;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()Z
.end method

.method public abstract closeSession(Landroid/app/Activity;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract openSession(Landroid/app/Activity;)V
.end method

.method public abstract refreshFeatureFlags()V
.end method
