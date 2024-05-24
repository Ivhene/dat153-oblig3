.class public abstract Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Hierarchical"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final parent:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V
    .locals 0
    .param p1, "cacheProvider"    # Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .param p2, "parent"    # Lnet/bytebuddy/pool/TypePool;

    .line 597
    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;)V

    .line 598
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    .line 599
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 616
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->clear()V

    .line 619
    nop

    .line 620
    return-void

    .line 618
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->clear()V

    .line 619
    throw v0
.end method

.method public describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    .line 606
    .local v0, "resolution":Lnet/bytebuddy/pool/TypePool$Resolution;
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 608
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    .line 606
    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
