.class public final Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "ListTypeAnnotator.java"


# instance fields
.field protected final annotators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;",
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
            "Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "annotators":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "annotatorList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    .line 39
    .local v2, "annotator":Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    instance-of v3, v2, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    if-eqz v3, :cond_0

    .line 40
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    iget-object v3, v3, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;->annotators:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v2    # "annotator":Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    :goto_1
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;->annotators:Ljava/util/List;

    .line 46
    return-void
.end method

.method public varargs constructor <init>([Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;)V
    .locals 1
    .param p1, "annotators"    # [Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    .line 28
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>(Ljava/util/List;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 50
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;->annotators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    .line 51
    .local v1, "annotator":Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v1    # "annotator":Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListTypeAnnotator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;->annotators:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
