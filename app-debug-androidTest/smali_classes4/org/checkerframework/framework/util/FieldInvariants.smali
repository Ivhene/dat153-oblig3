.class public Lorg/checkerframework/framework/util/FieldInvariants;
.super Ljava/lang/Object;
.source "FieldInvariants.java"


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final qualifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "qualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/util/FieldInvariants;-><init>(Lorg/checkerframework/framework/util/FieldInvariants;Ljava/util/List;Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/util/FieldInvariants;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/framework/util/FieldInvariants;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/FieldInvariants;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "qualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p1, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v0, p1, Lorg/checkerframework/framework/util/FieldInvariants;->qualifiers:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lorg/checkerframework/framework/util/FieldInvariants;->qualifiers:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getQualifiersFor(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 5
    .param p1, "field"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/FieldInvariants;->isWellFormed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "fieldString":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 87
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 90
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 92
    iget-object v4, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    iget-object v4, p0, Lorg/checkerframework/framework/util/FieldInvariants;->qualifiers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 83
    .end local v0    # "fieldString":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "malformed FieldInvariants"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSuperInvariant(Lorg/checkerframework/framework/util/FieldInvariants;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/source/Result;
    .locals 9
    .param p1, "superInvar"    # Lorg/checkerframework/framework/util/FieldInvariants;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 109
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 110
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v1, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    iget-object v2, p1, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v1, "missingFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 113
    nop

    .line 114
    const-string v2, ", "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 113
    const-string v3, "field.invariant.not.found.superclass"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    return-object v2

    .line 117
    .end local v1    # "missingFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/util/FieldInvariants;->getQualifiersFor(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, "superQualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/FieldInvariants;->getQualifiersFor(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 120
    .local v4, "subQualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 121
    .local v6, "superA":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 122
    invoke-virtual {v0, v4, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 123
    .local v7, "sub":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v7, :cond_2

    invoke-virtual {v0, v7, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 127
    .end local v6    # "superA":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "sub":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_1

    .line 124
    .restart local v6    # "superA":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v7    # "sub":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_2
    const-string v1, "field.invariant.not.subtype.superclass"

    filled-new-array {v2, v7, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    return-object v1

    .line 128
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "superQualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "subQualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "superA":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "sub":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_0

    .line 129
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public isWellFormed()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/checkerframework/framework/util/FieldInvariants;->qualifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/FieldInvariants;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
