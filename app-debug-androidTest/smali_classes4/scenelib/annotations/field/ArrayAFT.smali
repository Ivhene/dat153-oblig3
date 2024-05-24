.class public final Lscenelib/annotations/field/ArrayAFT;
.super Lscenelib/annotations/field/AnnotationFieldType;
.source "ArrayAFT.java"


# instance fields
.field public final elementType:Lscenelib/annotations/field/ScalarAFT;


# direct methods
.method public constructor <init>(Lscenelib/annotations/field/ScalarAFT;)V
    .locals 0
    .param p1, "elementType"    # Lscenelib/annotations/field/ScalarAFT;

    .line 22
    invoke-direct {p0}, Lscenelib/annotations/field/AnnotationFieldType;-><init>()V

    .line 23
    iput-object p1, p0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    .line 24
    return-void
.end method


# virtual methods
.method public accept(Lscenelib/annotations/field/AFTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscenelib/annotations/field/AFTVisitor<",
            "TR;TT;>;TT;)TR;"
        }
    .end annotation

    .line 69
    .local p1, "v":Lscenelib/annotations/field/AFTVisitor;, "Lscenelib/annotations/field/AFTVisitor<TR;TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/field/AFTVisitor;->visitArrayAFT(Lscenelib/annotations/field/ArrayAFT;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 52
    .local v0, "asCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 54
    .local v2, "notfirst":Z
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "elt":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 57
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 59
    :cond_0
    const/4 v2, 0x1

    .line 61
    :goto_1
    iget-object v5, p0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    invoke-virtual {v5, v4}, Lscenelib/annotations/field/ScalarAFT;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .end local v4    # "elt":Ljava/lang/Object;
    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isValidValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 28
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29
    return v1

    .line 31
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 32
    .local v0, "asCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v2, p0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 35
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 36
    .local v4, "elt":Ljava/lang/Object;
    iget-object v5, p0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    invoke-virtual {v5, v4}, Lscenelib/annotations/field/ScalarAFT;->isValidValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 37
    return v1

    .line 39
    .end local v4    # "elt":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 40
    :cond_4
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-nez v1, :cond_0

    const-string v1, "unknown"

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Lscenelib/annotations/field/ScalarAFT;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method
