.class public Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Wrapping;
.super Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.source "AndroidClassLoadingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapping"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "privateDirectory"    # Ljava/io/File;

    .line 557
    invoke-static {}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->makeDefault()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Wrapping;-><init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V

    .line 558
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V
    .locals 0
    .param p1, "privateDirectory"    # Ljava/io/File;
    .param p2, "dexProcessor"    # Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    .line 568
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;-><init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V

    .line 569
    return-void
.end method


# virtual methods
.method protected doLoad(Ljava/lang/ClassLoader;Ljava/util/Set;Ljava/io/File;)Ljava/util/Map;
    .locals 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "jar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 576
    .local p2, "typeDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Wrapping;->privateDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 577
    .local v0, "dexClassLoader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 578
    .local v1, "loadedTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 580
    .local v3, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :try_start_0
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    nop

    .line 584
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 581
    .restart local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :catch_0
    move-exception v2

    .line 582
    .local v2, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 585
    .end local v2    # "exception":Ljava/lang/ClassNotFoundException;
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_0
    return-object v1
.end method
