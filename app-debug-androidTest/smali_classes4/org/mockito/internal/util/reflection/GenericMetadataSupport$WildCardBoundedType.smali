.class public Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;
.super Ljava/lang/Object;
.source "GenericMetadataSupport.java"

# interfaces
.implements Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildCardBoundedType"
.end annotation


# instance fields
.field private final wildcard:Ljava/lang/reflect/WildcardType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 0
    .param p1, "wildcard"    # Ljava/lang/reflect/WildcardType;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    .line 701
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 720
    if-ne p0, p1, :cond_0

    .line 721
    const/4 v0, 0x1

    return v0

    .line 723
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    move-object v1, p1

    check-cast v1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;

    invoke-static {v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->access$000(Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 724
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public firstBound()Ljava/lang/reflect/Type;
    .locals 4

    .line 706
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 707
    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 709
    .local v1, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget-object v2, v0, v3

    goto :goto_0

    :cond_0
    aget-object v2, v1, v3

    :goto_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 732
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 715
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{firstBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interfaceBounds=[]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wildCard()Ljava/lang/reflect/WildcardType;
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    return-object v0
.end method
