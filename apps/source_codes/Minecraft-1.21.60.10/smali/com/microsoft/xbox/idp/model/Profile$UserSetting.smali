.class public final Lcom/microsoft/xbox/idp/model/Profile$UserSetting;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserSetting"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/model/Profile$UserSetting;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/model/Profile$UserSetting;->value:Ljava/lang/String;

    return-void
.end method
