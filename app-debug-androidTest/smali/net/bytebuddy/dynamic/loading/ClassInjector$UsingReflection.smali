.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingReflection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final forbidExisting:Z

.field private final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field private final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 161
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "protectionDomain"    # Ljava/security/ProtectionDomain;

    .line 172
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p3, "packageDefinitionStrategy"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
    .param p4, "forbidExisting"    # Z

    .line 189
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    .line 190
    if-eqz p1, :cond_0

    .line 193
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 194
    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    .line 195
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    .line 196
    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    .line 197
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot inject classes into the bootstrap class loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 270
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static ofSystemClassLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    .line 279
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/security/ProtectionDomain;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/ProtectionDomain;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 210
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    move-object/from16 v1, p0

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;

    move-result-object v12

    .line 211
    .local v12, "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    .line 212
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/Map$Entry;

    .line 213
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12, v0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getClassLoadingLock(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 214
    :try_start_0
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12, v0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->findClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v11, v0

    .line 215
    .local v11, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v11, :cond_6

    .line 216
    :try_start_1
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v10, v0

    .line 217
    .local v10, "packageIndex":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    .line 218
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 219
    .local v9, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v2, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v9, v3}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;->define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;

    move-result-object v0

    move-object v8, v0

    .line 220
    .local v8, "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v12, v0, v9}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getDefinedPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v0

    .line 222
    .local v7, "definedPackage":Ljava/lang/Package;
    if-nez v7, :cond_2

    .line 224
    :try_start_2
    iget-object v3, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 226
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationTitle()Ljava/lang/String;

    move-result-object v17

    .line 230
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVersion()Ljava/lang/String;

    move-result-object v18

    .line 231
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVendor()Ljava/lang/String;

    move-result-object v19

    .line 232
    invoke-interface {v8}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSealBase()Ljava/net/URL;

    move-result-object v20
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    move-object v2, v12

    move-object v4, v9

    move-object/from16 v21, v14

    move-object v14, v7

    .end local v7    # "definedPackage":Ljava/lang/Package;
    .local v14, "definedPackage":Ljava/lang/Package;
    move-object v7, v0

    move-object/from16 v22, v13

    move-object v13, v8

    .end local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .local v13, "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .local v22, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    move-object/from16 v8, v17

    move-object/from16 v17, v15

    move-object v15, v9

    .end local v9    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    move-object/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "packageIndex":I
    .local v18, "packageIndex":I
    move-object/from16 v10, v19

    move-object/from16 v23, v11

    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v23, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v11, v20

    :try_start_3
    invoke-interface/range {v2 .. v11}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    goto/16 :goto_2

    .line 233
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v14    # "definedPackage":Ljava/lang/Package;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v18    # "packageIndex":I
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "definedPackage":Ljava/lang/Package;
    .restart local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageIndex":I
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    :catch_1
    move-exception v0

    move/from16 v18, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v17, v15

    move-object v14, v7

    move-object v13, v8

    move-object v15, v9

    .line 242
    .end local v7    # "definedPackage":Ljava/lang/Package;
    .end local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageIndex":I
    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "exception":Ljava/lang/IllegalStateException;
    .local v13, "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .restart local v14    # "definedPackage":Ljava/lang/Package;
    .local v15, "packageName":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v18    # "packageIndex":I
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    :try_start_4
    iget-object v2, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v12, v2, v15}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    .line 243
    .end local v14    # "definedPackage":Ljava/lang/Package;
    .local v2, "definedPackage":Ljava/lang/Package;
    if-eqz v2, :cond_1

    .line 245
    invoke-interface {v13, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    goto/16 :goto_2

    .line 246
    .restart local v0    # "exception":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sealing violation for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (getPackage fallback)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v3

    .line 244
    .restart local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :cond_1
    nop

    .end local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v0

    .line 249
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    .end local v2    # "definedPackage":Ljava/lang/Package;
    .end local v18    # "packageIndex":I
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "definedPackage":Ljava/lang/Package;
    .restart local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageIndex":I
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :cond_2
    move/from16 v18, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v17, v15

    move-object v14, v7

    move-object v13, v8

    move-object v15, v9

    .end local v7    # "definedPackage":Ljava/lang/Package;
    .end local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageIndex":I
    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .restart local v14    # "definedPackage":Ljava/lang/Package;
    .local v15, "packageName":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v18    # "packageIndex":I
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v13, v14}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 250
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sealing violation for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v0

    .line 220
    .end local v14    # "definedPackage":Ljava/lang/Package;
    .end local v18    # "packageIndex":I
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageIndex":I
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :cond_4
    move/from16 v18, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v17, v15

    move-object v13, v8

    move-object v15, v9

    .end local v8    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageIndex":I
    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .local v15, "packageName":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v18    # "packageIndex":I
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 217
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v18    # "packageIndex":I
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "packageIndex":I
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    :cond_5
    move/from16 v18, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v17, v15

    .line 254
    .end local v10    # "packageIndex":I
    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v18    # "packageIndex":I
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface {v12, v0, v2, v3, v4}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v0

    .line 255
    .end local v18    # "packageIndex":I
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 259
    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    move-object/from16 v2, v22

    goto :goto_4

    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    :catchall_1
    move-exception v0

    move-object/from16 v22, v13

    move-object/from16 v17, v15

    move-object/from16 v2, v22

    .end local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    goto :goto_4

    .line 255
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    :cond_6
    move-object/from16 v23, v11

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v17, v15

    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_5
    iget-boolean v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    if-nez v0, :cond_7

    move-object/from16 v11, v23

    .line 258
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, v22

    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :try_start_6
    invoke-interface {v2, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    nop

    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-exit v16

    .line 260
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    move-object v13, v2

    move-object/from16 v14, v21

    goto/16 :goto_0

    .line 256
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v2, v22

    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot inject already loaded type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v23

    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v0

    .line 259
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "dispatcher":Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :catchall_2
    move-exception v0

    move-object/from16 v2, v22

    .end local v22    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    goto :goto_4

    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    :catchall_3
    move-exception v0

    move-object v2, v13

    move-object/from16 v17, v15

    .end local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    :goto_4
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 261
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    .restart local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :cond_8
    move-object v2, v13

    .end local v13    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    return-object v2
.end method

.method public isAlive()Z
    .locals 1

    .line 203
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->isAvailable()Z

    move-result v0

    return v0
.end method
