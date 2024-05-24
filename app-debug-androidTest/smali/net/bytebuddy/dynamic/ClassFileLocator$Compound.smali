.class public Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classFileLocators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;)V"
        }
    .end annotation

    .line 1782
    .local p1, "classFileLocators":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/ClassFileLocator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    .line 1784
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1785
    .local v1, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    instance-of v2, v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    if-eqz v2, :cond_0

    .line 1786
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1787
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    if-nez v2, :cond_1

    .line 1788
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1790
    .end local v1    # "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1791
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 1
    .param p1, "classFileLocator"    # [Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1773
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    .line 1774
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

    .line 1810
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1811
    .local v1, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->close()V

    .line 1812
    .end local v1    # "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    goto :goto_0

    .line 1813
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1797
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;->classFileLocators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1798
    .local v1, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    invoke-interface {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v2

    .line 1799
    .local v2, "resolution":Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->isResolved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1800
    return-object v2

    .line 1802
    .end local v1    # "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    .end local v2    # "resolution":Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    :cond_0
    goto :goto_0

    .line 1803
    :cond_1
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
