.class public Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;
.super Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.source "AndroidClassLoadingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injecting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 606
    :try_start_0
    new-instance v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForAndroidPVm;

    const-class v1, Ldalvik/system/BaseDexClassLoader;

    const-string v2, "addDexPath"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForAndroidPVm;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .local v0, "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
    goto :goto_0

    .line 607
    .end local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
    :catchall_0
    move-exception v0

    .line 608
    .local v0, "ignored":Ljava/lang/Throwable;
    sget-object v1, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    move-object v0, v1

    .line 610
    .local v0, "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
    :goto_0
    sput-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;

    .line 611
    .end local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "privateDirectory"    # Ljava/io/File;

    .line 620
    invoke-static {}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->makeDefault()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;-><init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V

    .line 621
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V
    .locals 0
    .param p1, "privateDirectory"    # Ljava/io/File;
    .param p2, "dexProcessor"    # Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    .line 631
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;-><init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V

    .line 632
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    .local p2, "typeDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->privateDirectory:Ljava/io/File;

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-interface {v0, v1, p3, p1, v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;->loadDex(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/RandomString;)Ldalvik/system/DexFile;

    move-result-object v0

    .line 650
    .local v0, "dexFile":Ldalvik/system/DexFile;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 651
    .local v1, "loadedTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 652
    .local v3, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 653
    :try_start_1
    sget-object v4, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;

    invoke-interface {v4, v0, p1, v3}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;->loadClass(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Class;

    move-result-object v4

    .line 654
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_0

    .line 657
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    nop

    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-exit p1

    .line 659
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 655
    .restart local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .restart local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dexFile":Ldalvik/system/DexFile;
    .end local v1    # "loadedTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "typeDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .end local p3    # "jar":Ljava/io/File;
    throw v2

    .line 658
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "dexFile":Ldalvik/system/DexFile;
    .restart local v1    # "loadedTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    .restart local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "typeDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .restart local p3    # "jar":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "dexFile":Ldalvik/system/DexFile;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "typeDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .end local p3    # "jar":Ljava/io/File;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 660
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .restart local v0    # "dexFile":Ldalvik/system/DexFile;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "typeDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .restart local p3    # "jar":Ljava/io/File;
    :cond_1
    nop

    .line 662
    if-eqz v0, :cond_2

    .line 663
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 660
    :cond_2
    return-object v1

    .line 662
    .end local v1    # "loadedTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 663
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 665
    :cond_3
    throw v1
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 638
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    if-eqz p1, :cond_0

    .line 641
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot inject classes into the bootstrap class loader on Android"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
