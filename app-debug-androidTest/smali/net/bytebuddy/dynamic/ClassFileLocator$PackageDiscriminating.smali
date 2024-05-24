.class public Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDiscriminating"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classFileLocators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;)V"
        }
    .end annotation

    .line 1725
    .local p1, "classFileLocators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/dynamic/ClassFileLocator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1726
    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->classFileLocators:Ljava/util/Map;

    .line 1727
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1746
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->classFileLocators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1747
    .local v1, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->close()V

    .line 1748
    .end local v1    # "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    goto :goto_0

    .line 1749
    :cond_0
    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->classFileLocators:Ljava/util/Map;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->classFileLocators:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->classFileLocators:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1733
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1734
    .local v0, "packageIndex":I
    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;->classFileLocators:Ljava/util/Map;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 1736
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1734
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1737
    .local v1, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    if-nez v1, :cond_1

    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v2, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1739
    :cond_1
    invoke-interface {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v2

    .line 1737
    :goto_1
    return-object v2
.end method
