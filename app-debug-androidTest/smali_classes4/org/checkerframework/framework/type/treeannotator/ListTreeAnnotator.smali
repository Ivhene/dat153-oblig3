.class public Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "ListTreeAnnotator.java"


# instance fields
.field protected final annotators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;",
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
            "Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "annotators":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "annotatorList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 40
    .local v2, "annotator":Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    instance-of v3, v2, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    if-eqz v3, :cond_0

    .line 41
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    iget-object v3, v3, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;->annotators:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v2    # "annotator":Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    :goto_1
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;->annotators:Ljava/util/List;

    .line 47
    return-void
.end method

.method public varargs constructor <init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V
    .locals 1
    .param p1, "annotators"    # [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>(Ljava/util/List;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;->defaultAction(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public defaultAction(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 51
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;->annotators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 52
    .local v1, "annotator":Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v1    # "annotator":Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListTreeAnnotator("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;->annotators:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
