.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;
.super Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.source "ByteArrayClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildFirst"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;
    }
.end annotation


# static fields
.field private static final CLASS_FILE_SUFFIX:Ljava/lang/String; = ".class"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 998
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->doRegisterAsParallelCapable()V

    .line 999
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1022
    .local p2, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V

    .line 1023
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p4, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .param p5, "packageDefinitionStrategy"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    .line 1073
    .local p2, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    .line 1074
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p4, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .param p5, "packageDefinitionStrategy"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .param p6, "classFilePostProcessor"    # Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;",
            ")V"
        }
    .end annotation

    .line 1111
    .local p2, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V

    .line 1112
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    .line 1044
    .local p2, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    .line 1045
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "sealed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1033
    .local p3, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;)V

    .line 1034
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "sealed"    # Z
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .param p6, "packageDefinitionStrategy"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    .line 1092
    .local p3, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    .line 1093
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "sealed"    # Z
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .param p6, "packageDefinitionStrategy"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .param p7, "classFilePostProcessor"    # Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;",
            ")V"
        }
    .end annotation

    .line 1132
    .local p3, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V

    .line 1133
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "sealed"    # Z
    .param p4, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    .line 1056
    .local p3, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    .line 1057
    return-void
.end method

.method private static doRegisterAsParallelCapable()V
    .locals 4

    .line 1007
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "registerAsParallelCapable"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1008
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1009
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1010
    :catchall_0
    move-exception v0

    .line 1013
    :goto_0
    return-void
.end method

.method private isShadowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->isManifest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1256
    :cond_0
    monitor-enter p0

    .line 1257
    const/16 v0, 0x2f

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".class"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "typeName":Ljava/lang/String;
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1259
    monitor-exit p0

    return v3

    .line 1261
    :cond_1
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1262
    .local v2, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v4, p0, :cond_2

    move v1, v3

    :cond_2
    monitor-exit p0

    return v1

    .line 1263
    .end local v0    # "typeName":Ljava/lang/String;
    .end local v2    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1253
    :cond_3
    :goto_0
    return v1
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
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

    .line 1143
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    sget-object v4, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;
    .locals 10
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p3, "persistenceHandler"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .param p4, "packageDefinitionStrategy"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .param p5, "forbidExisting"    # Z
    .param p6, "sealed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "ZZ)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1172
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 1173
    .local v9, "typesByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1174
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    goto :goto_0

    .line 1176
    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;

    sget-object v8, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    move-object v1, v0

    move-object v2, p0

    move/from16 v3, p6

    move-object v4, v9

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V

    .line 1183
    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, v0

    .line 1184
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 1186
    .local v3, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :try_start_0
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 1187
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v5, v1, :cond_1

    goto :goto_2

    .line 1188
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class already loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .end local v9    # "typesByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    .end local p2    # "protectionDomain":Ljava/security/ProtectionDomain;
    .end local p3    # "persistenceHandler":Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .end local p4    # "packageDefinitionStrategy":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .end local p5    # "forbidExisting":Z
    .end local p6    # "sealed":Z
    throw v0

    .line 1190
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    .restart local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .restart local v9    # "typesByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    .restart local p2    # "protectionDomain":Ljava/security/ProtectionDomain;
    .restart local p3    # "persistenceHandler":Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .restart local p4    # "packageDefinitionStrategy":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .restart local p5    # "forbidExisting":Z
    .restart local p6    # "sealed":Z
    :cond_2
    :goto_2
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    nop

    .line 1194
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 1191
    .restart local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot load class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1195
    .end local v0    # "exception":Ljava/lang/ClassNotFoundException;
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object v0

    .line 1230
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->isShadowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    .line 1230
    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object v0

    .line 1240
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 1241
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;

    .line 1242
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;-><init>(Ljava/net/URL;Ljava/util/Enumeration;)V

    .line 1240
    :goto_0
    return-object v1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1202
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;->getClassLoadingLock(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1203
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1204
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 1205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1208
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1209
    if-eqz p2, :cond_1

    .line 1210
    invoke-virtual {p0, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->resolveClass(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    :cond_1
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 1213
    :catch_0
    move-exception v2

    .line 1217
    .local v2, "exception":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1219
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "exception":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
