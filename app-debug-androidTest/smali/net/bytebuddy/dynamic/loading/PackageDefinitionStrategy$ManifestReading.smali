.class public Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;
.super Ljava/lang/Object;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManifestReading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ATTRIBUTE_NAMES:[Ljava/util/jar/Attributes$Name;

.field private static final NOT_SEALED:Ljava/net/URL;


# instance fields
.field private final sealBaseLocator:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 498
    nop

    .line 493
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->NOT_SEALED:Ljava/net/URL;

    .line 498
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/jar/Attributes$Name;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->ATTRIBUTE_NAMES:[Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 517
    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$ForTypeResourceUrl;

    invoke-direct {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$ForTypeResourceUrl;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;-><init>(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;)V

    .line 518
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;)V
    .locals 0
    .param p1, "sealBaseLocator"    # Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->sealBaseLocator:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;

    .line 527
    return-void
.end method

.method static synthetic access$000()Ljava/net/URL;
    .locals 1

    .line 488
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->NOT_SEALED:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .locals 18
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;

    .line 533
    move-object/from16 v1, p1

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 534
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_4

    .line 537
    :try_start_0
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 538
    .local v0, "manifest":Ljava/util/jar/Manifest;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/jar/Attributes$Name;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v4

    .line 540
    .local v4, "mainAttributes":Ljava/util/jar/Attributes;
    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 541
    sget-object v6, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->ATTRIBUTE_NAMES:[Ljava/util/jar/Attributes$Name;

    array-length v7, v6

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 542
    .local v9, "attributeName":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v4, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 541
    nop

    .end local v9    # "attributeName":Ljava/util/jar/Attributes$Name;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 545
    :cond_0
    const/16 v6, 0x2e

    const/16 v7, 0x2f

    move-object/from16 v8, p2

    :try_start_1
    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v6

    .line 546
    .local v6, "attributes":Ljava/util/jar/Attributes;
    if-eqz v6, :cond_2

    .line 547
    sget-object v7, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->ATTRIBUTE_NAMES:[Ljava/util/jar/Attributes$Name;

    array-length v9, v7

    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v10, v7, v5

    .line 548
    .local v10, "attributeName":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v6, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    .line 549
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 550
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v10    # "attributeName":Ljava/util/jar/Attributes$Name;
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 554
    :cond_2
    new-instance v5, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;

    sget-object v7, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    sget-object v7, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 555
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    sget-object v7, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 556
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 557
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 558
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 559
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    sget-object v7, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 560
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v7, :cond_3

    move-object/from16 v7, p0

    :try_start_2
    iget-object v9, v7, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->sealBaseLocator:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    move-object/from16 v10, p3

    :try_start_3
    invoke-interface {v9, v1, v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;->findSealBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    goto :goto_2

    .line 564
    .end local v0    # "manifest":Ljava/util/jar/Manifest;
    .end local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/jar/Attributes$Name;Ljava/lang/String;>;"
    .end local v4    # "mainAttributes":Ljava/util/jar/Attributes;
    .end local v6    # "attributes":Ljava/util/jar/Attributes;
    :catchall_0
    move-exception v0

    move-object/from16 v10, p3

    goto :goto_3

    .line 561
    .restart local v0    # "manifest":Ljava/util/jar/Manifest;
    .restart local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/jar/Attributes$Name;Ljava/lang/String;>;"
    .restart local v4    # "mainAttributes":Ljava/util/jar/Attributes;
    .restart local v6    # "attributes":Ljava/util/jar/Attributes;
    :cond_3
    move-object/from16 v7, p0

    move-object/from16 v10, p3

    sget-object v9, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->NOT_SEALED:Ljava/net/URL;

    :goto_2
    move-object/from16 v17, v9

    move-object v10, v5

    invoke-direct/range {v10 .. v17}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 564
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 554
    return-object v5

    .line 564
    .end local v0    # "manifest":Ljava/util/jar/Manifest;
    .end local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/jar/Attributes$Name;Ljava/lang/String;>;"
    .end local v4    # "mainAttributes":Ljava/util/jar/Attributes;
    .end local v6    # "attributes":Ljava/util/jar/Attributes;
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    :goto_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 565
    nop

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 566
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error while reading manifest file"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 570
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_4
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->sealBaseLocator:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->sealBaseLocator:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->sealBaseLocator:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
