.class public Lnp/dcc/protect/EntryPoint;
.super Ljava/lang/Object;
.source "EntryPoint.java"


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "stub"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native stub(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method
