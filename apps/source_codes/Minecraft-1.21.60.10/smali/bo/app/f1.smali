.class public final Lbo/app/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/f1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\'\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010#\u001a\u00020\r\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u000f\u0010\u0006\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0011J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u001a\u001a\u00020\u00198\u0007\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR \u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lbo/app/f1;",
        "",
        "",
        "d",
        "f",
        "g",
        "e",
        "()V",
        "Lorg/json/JSONArray;",
        "featureFlagsData",
        "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
        "a",
        "(Lorg/json/JSONArray;)Lcom/braze/events/FeatureFlagsUpdatedEvent;",
        "",
        "id",
        "",
        "Lcom/braze/models/FeatureFlag;",
        "(Ljava/lang/String;)Ljava/util/List;",
        "Lbo/app/g2;",
        "externalPublisher",
        "(Lbo/app/g2;)V",
        "",
        "c",
        "()J",
        "timestampLastRefresh",
        "Lbo/app/a5;",
        "serverConfigStorageProvider",
        "Lbo/app/a5;",
        "b",
        "()Lbo/app/a5;",
        "()Ljava/util/List;",
        "getPublishableFeatureFlagList$annotations",
        "publishableFeatureFlagList",
        "Landroid/content/Context;",
        "context",
        "apiKey",
        "Lbo/app/y1;",
        "brazeManager",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lbo/app/a5;Lbo/app/y1;)V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final f:Lbo/app/f1$a;


# instance fields
.field private final a:Lbo/app/a5;

.field private final b:Lbo/app/y1;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/FeatureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/f1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/f1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/f1;->f:Lbo/app/f1$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbo/app/a5;Lbo/app/y1;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbo/app/f1;->a:Lbo/app/a5;

    iput-object p4, p0, Lbo/app/f1;->b:Lbo/app/y1;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lbo/app/f1;->c:Ljava/util/List;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "com.braze.managers.featureflags.eligibility."

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "context.getSharedPrefere\u2026ontext.MODE_PRIVATE\n    )"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lbo/app/f1;->d:Landroid/content/SharedPreferences;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "com.braze.managers.featureflags.storage."

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbo/app/f1;->e:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lbo/app/f1;->d()V

    return-void
.end method

.method public static final synthetic a(Lbo/app/f1;)J
    .locals 2

    invoke-direct {p0}, Lbo/app/f1;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(Lbo/app/f1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lbo/app/f1;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final c()J
    .locals 4

    iget-object v0, p0, Lbo/app/f1;->d:Landroid/content/SharedPreferences;

    const-string v1, "last_refresh"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final d()V
    .locals 15

    iget-object v0, p0, Lbo/app/f1;->e:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lbo/app/f1$b;->b:Lbo/app/f1$b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbo/app/f1;->c:Ljava/util/List;

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v10, Lbo/app/f1$c;->b:Lbo/app/f1$c;

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbo/app/f1;->c:Ljava/util/List;

    return-void

    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    :try_start_0
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_6
    :goto_3
    move v7, v3

    :goto_4
    if-eqz v7, :cond_7

    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v11, 0x0

    new-instance v12, Lbo/app/f1$d;

    invoke-direct {v12, v5}, Lbo/app/f1$d;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v9, p0

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v7, Lbo/app/j1;->a:Lbo/app/j1;

    invoke-virtual {v7, v5}, Lbo/app/j1;->a(Lorg/json/JSONObject;)Lcom/braze/models/FeatureFlag;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_5
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lbo/app/f1$e;

    invoke-direct {v9, v6}, Lbo/app/f1$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0, v8, v5, v9}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_8
    iput-object v1, p0, Lbo/app/f1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)Lcom/braze/events/FeatureFlagsUpdatedEvent;
    .locals 13

    const-string v0, "featureFlagsData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbo/app/j1;->a:Lbo/app/j1;

    invoke-virtual {v0, p1}, Lbo/app/j1;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbo/app/f1;->c:Ljava/util/List;

    iget-object p1, p0, Lbo/app/f1;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lbo/app/f1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/FeatureFlag;

    :try_start_0
    invoke-virtual {v1}, Lcom/braze/models/FeatureFlag;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/braze/models/FeatureFlag;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lbo/app/f1$g;

    invoke-direct {v5, v1}, Lbo/app/f1$g;-><init>(Lcom/braze/models/FeatureFlag;)V

    invoke-virtual {v3, p0, v4, v2, v5}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lbo/app/f1$h;->b:Lbo/app/f1$h;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    new-instance p1, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-virtual {p0}, Lbo/app/f1;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/braze/events/FeatureFlagsUpdatedEvent;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/FeatureFlag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbo/app/f1;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/models/FeatureFlag;

    invoke-virtual {v2}, Lcom/braze/models/FeatureFlag;->deepcopy$android_sdk_base_release()Lcom/braze/models/FeatureFlag;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/braze/models/FeatureFlag;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lbo/app/f1;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/braze/models/FeatureFlag;

    invoke-virtual {v3}, Lcom/braze/models/FeatureFlag;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbo/app/f1;->c:Ljava/util/List;

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/FeatureFlag;

    invoke-virtual {v1}, Lcom/braze/models/FeatureFlag;->deepcopy$android_sdk_base_release()Lcom/braze/models/FeatureFlag;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public final a(Lbo/app/g2;)V
    .locals 2

    const-string v0, "externalPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-virtual {p0}, Lbo/app/f1;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braze/events/FeatureFlagsUpdatedEvent;-><init>(Ljava/util/List;)V

    const-class v1, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-interface {p1, v0, v1}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public final b()Lbo/app/a5;
    .locals 1

    iget-object v0, p0, Lbo/app/f1;->a:Lbo/app/a5;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lbo/app/f1;->b:Lbo/app/y1;

    invoke-interface {v0}, Lbo/app/y1;->refreshFeatureFlags()V

    return-void
.end method

.method public final f()V
    .locals 10

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v0

    invoke-direct {p0}, Lbo/app/f1;->c()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lbo/app/f1;->a:Lbo/app/a5;

    invoke-virtual {v4}, Lbo/app/a5;->f()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lbo/app/f1$f;

    invoke-direct {v7, p0, v0, v1}, Lbo/app/f1$f;-><init>(Lbo/app/f1;J)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lbo/app/f1;->e()V

    return-void
.end method

.method public final g()V
    .locals 9

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v0

    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lbo/app/f1$i;

    invoke-direct {v6, v0, v1}, Lbo/app/f1$i;-><init>(J)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iget-object v2, p0, Lbo/app/f1;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_refresh"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
