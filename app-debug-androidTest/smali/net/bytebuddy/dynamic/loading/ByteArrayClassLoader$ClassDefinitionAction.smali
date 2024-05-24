.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;
.super Ljava/lang/Object;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClassDefinitionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final binaryRepresentation:[B

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "binaryRepresentation"    # [B

    .line 614
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    .line 616
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    .line 617
    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public run()Ljava/lang/Class;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 624
    .local v0, "packageIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 625
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;->define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;

    move-result-object v2

    .line 627
    .local v2, "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isDefined()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$100()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-interface {v3, v4, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;->apply(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v12

    .line 629
    .local v12, "definedPackage":Ljava/lang/Package;
    if-nez v12, :cond_0

    .line 630
    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    .line 631
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v5

    .line 632
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v6

    .line 633
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v7

    .line 634
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationTitle()Ljava/lang/String;

    move-result-object v8

    .line 635
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVersion()Ljava/lang/String;

    move-result-object v9

    .line 636
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVendor()Ljava/lang/String;

    move-result-object v10

    .line 637
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSealBase()Ljava/net/URL;

    move-result-object v11

    .line 630
    move-object v4, v1

    invoke-static/range {v3 .. v11}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$200(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_0

    .line 638
    :cond_0
    invoke-interface {v2, v12}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sealing violation for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "definition":Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .end local v12    # "definedPackage":Ljava/lang/Package;
    :cond_2
    :goto_0
    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->this$0:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object v6, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    iget-object v7, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    const/4 v8, 0x0

    array-length v9, v7

    iget-object v10, v5, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-static/range {v5 .. v10}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$300(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 595
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
