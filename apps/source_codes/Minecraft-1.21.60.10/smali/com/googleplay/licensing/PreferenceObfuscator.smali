.class public Lcom/googleplay/licensing/PreferenceObfuscator;
.super Ljava/lang/Object;
.source "PreferenceObfuscator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceObfuscator"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mObfuscator:Lcom/googleplay/licensing/Obfuscator;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/googleplay/licensing/Obfuscator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mObfuscator:Lcom/googleplay/licensing/Obfuscator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    iget-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mObfuscator:Lcom/googleplay/licensing/Obfuscator;

    invoke-interface {v1, v0, p1}, Lcom/googleplay/licensing/Obfuscator;->unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lcom/googleplay/licensing/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validation error while reading preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PreferenceObfuscator"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p2
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mObfuscator:Lcom/googleplay/licensing/Obfuscator;

    invoke-interface {v0, p2, p1}, Lcom/googleplay/licensing/Obfuscator;->obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/googleplay/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
