.class public Lnet/bytebuddy/dynamic/Transformer$Compound;
.super Ljava/lang/Object;
.source "Transformer.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/Transformer<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final transformers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "TS;>;>;"
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
            "Lnet/bytebuddy/dynamic/Transformer<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 629
    .local p0, "this":Lnet/bytebuddy/dynamic/Transformer$Compound;, "Lnet/bytebuddy/dynamic/Transformer$Compound<TS;>;"
    .local p1, "transformers":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/Transformer<TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    .line 631
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/Transformer;

    .line 632
    .local v1, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<TS;>;"
    instance-of v2, v1, Lnet/bytebuddy/dynamic/Transformer$Compound;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/dynamic/Transformer$Compound;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 634
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/dynamic/Transformer$NoOp;

    if-nez v2, :cond_1

    .line 635
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v1    # "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<TS;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 638
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "TS;>;)V"
        }
    .end annotation

    .line 621
    .local p0, "this":Lnet/bytebuddy/dynamic/Transformer$Compound;, "Lnet/bytebuddy/dynamic/Transformer$Compound<TS;>;"
    .local p1, "transformer":[Lnet/bytebuddy/dynamic/Transformer;, "[Lnet/bytebuddy/dynamic/Transformer<TS;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/Transformer$Compound;-><init>(Ljava/util/List;)V

    .line 622
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/dynamic/Transformer$Compound;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/Transformer$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "TS;)TS;"
        }
    .end annotation

    .line 644
    .local p0, "this":Lnet/bytebuddy/dynamic/Transformer$Compound;, "Lnet/bytebuddy/dynamic/Transformer$Compound<TS;>;"
    .local p2, "target":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$Compound;->transformers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/Transformer;

    .line 645
    .local v1, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<TS;>;"
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/dynamic/Transformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 646
    .end local v1    # "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<TS;>;"
    goto :goto_0

    .line 647
    :cond_0
    return-object p2
.end method
