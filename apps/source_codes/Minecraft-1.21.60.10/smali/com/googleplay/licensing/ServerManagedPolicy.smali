.class public Lcom/googleplay/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;
.source "ServerManagedPolicy.java"

# interfaces
.implements Lcom/googleplay/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.ServerManagedPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "ServerManagedPolicy"

.field private static isServerResponse:Z


# instance fields
.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mOriginalGT:J

.field private mOriginalRetries:J

.field private mOriginalVT:J

.field private mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/googleplay/licensing/Obfuscator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalVT:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalGT:J

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalRetries:J

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Lcom/googleplay/licensing/PreferenceObfuscator;

    invoke-direct {v0, p1, p2}, Lcom/googleplay/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/googleplay/licensing/Obfuscator;)V

    iput-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const/16 p1, 0x123

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lastResponse"

    invoke-virtual {v0, p2, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "validityTimestamp"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "retryUntil"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "maxRetries"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "retryCount"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "?"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v2, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "Invalid syntax error while decoding extras data from server."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private setLastResponse(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponseTime:J

    iput p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ServerManagedPolicy"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalRetries:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string p1, "0"

    :goto_0
    const-string v2, "license check retries = %d"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryCount(J)V
    .locals 2

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 6

    const-string v0, "ServerManagedPolicy"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalGT:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string p1, "0"

    :goto_0
    const-string v2, "license retry until timestamp = %d"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalVT:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    sget-boolean v0, Lcom/googleplay/licensing/ServerManagedPolicy;->isServerResponse:Z

    const-string v1, "ServerManagedPolicy"

    if-eqz v0, :cond_0

    const-string v0, "Server license response"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Cached license response"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    const/16 v3, 0x123

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v5
.end method

.method public getExtraLicenseData()[J
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalVT:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalGT:J

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalRetries:J

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getMaxRetries()J
    .locals 2

    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/googleplay/licensing/ResponseData;)V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/googleplay/licensing/ServerManagedPolicy;->isServerResponse:Z

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryCount(J)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryCount(J)V

    :goto_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    iget-object p2, p2, Lcom/googleplay/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    iput p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    const-string v0, "VT"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/googleplay/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    const-string v0, "GT"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    const-string v0, "GR"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x231

    if-ne p1, p2, :cond_2

    const-string p2, "0"

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/googleplay/licensing/ServerManagedPolicy;->setLastResponse(I)V

    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    invoke-virtual {p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method
