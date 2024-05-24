.class public Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;
.super Ljava/lang/Object;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final implementationTitle:Ljava/lang/String;

.field private final implementationVendor:Ljava/lang/String;

.field private final implementationVersion:Ljava/lang/String;

.field protected final sealBase:Ljava/net/URL;

.field private final specificationTitle:Ljava/lang/String;

.field private final specificationVendor:Ljava/lang/String;

.field private final specificationVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .param p1, "specificationTitle"    # Ljava/lang/String;
    .param p2, "specificationVersion"    # Ljava/lang/String;
    .param p3, "specificationVendor"    # Ljava/lang/String;
    .param p4, "implementationTitle"    # Ljava/lang/String;
    .param p5, "implementationVersion"    # Ljava/lang/String;
    .param p6, "implementationVendor"    # Ljava/lang/String;
    .param p7, "sealBase"    # Ljava/net/URL;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    .line 376
    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    .line 378
    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    .line 379
    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    .line 380
    iput-object p6, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    .line 381
    iput-object p7, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    .line 382
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 467
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 468
    return v0

    .line 469
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 472
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;

    .line 473
    .local v2, "simple":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_2
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_3
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    .line 474
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_5
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_6
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_7
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_8
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_9
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    .line 477
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_a
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_b
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_c
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_d
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-eqz v3, :cond_e

    iget-object v4, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    .line 479
    invoke-virtual {v3, v4}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_e
    iget-object v3, v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-nez v3, :cond_10

    :cond_f
    goto :goto_1

    :cond_10
    :goto_0
    move v0, v1

    .line 473
    :goto_1
    return v0

    .line 470
    .end local v2    # "simple":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;
    :cond_11
    :goto_2
    return v1
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSealBase()Ljava/net/URL;
    .locals 1

    .line 437
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 454
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 455
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 456
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 457
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    add-int/2addr v2, v3

    .line 458
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    add-int/2addr v0, v3

    .line 459
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    add-int/2addr v2, v3

    .line 460
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/URL;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    .line 461
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isCompatibleTo(Ljava/lang/Package;)Z
    .locals 1
    .param p1, "definedPackage"    # Ljava/lang/Package;

    .line 444
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p1}, Ljava/lang/Package;->isSealed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 447
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public isDefined()Z
    .locals 1

    .line 388
    const/4 v0, 0x1

    return v0
.end method
