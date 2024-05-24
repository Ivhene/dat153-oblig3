.class Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;
.super Ljava/lang/Object;
.source "AddAnnotatedFor.java"

# interfaces
.implements Lscenelib/annotations/el/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/stub/AddAnnotatedFor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscenelib/annotations/el/ElementVisitor<",
        "Ljava/lang/Void;",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AnnotationDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AnnotationDef;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 103
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitBlock(Lscenelib/annotations/el/ABlock;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lscenelib/annotations/el/ABlock;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "el"    # Lscenelib/annotations/el/ABlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ABlock;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 108
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 109
    .local v1, "e":Lscenelib/annotations/el/AField;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/AField;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v1    # "e":Lscenelib/annotations/el/AField;
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitExpression(Lscenelib/annotations/el/AExpression;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitClass(Lscenelib/annotations/el/AClass;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lscenelib/annotations/el/AClass;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "el"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AClass;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 116
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 117
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 120
    .restart local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AExpression;

    .line 123
    .local v1, "e":Lscenelib/annotations/el/AExpression;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/AExpression;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v1    # "e":Lscenelib/annotations/el/AExpression;
    goto :goto_2

    .line 125
    :cond_2
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 126
    .local v1, "e":Lscenelib/annotations/el/AField;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/AField;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v1    # "e":Lscenelib/annotations/el/AField;
    goto :goto_3

    .line 128
    :cond_3
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ABlock;

    .line 129
    .local v1, "e":Lscenelib/annotations/el/ABlock;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ABlock;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v1    # "e":Lscenelib/annotations/el/ABlock;
    goto :goto_4

    .line 131
    :cond_4
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 132
    .local v1, "e":Lscenelib/annotations/el/AMethod;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/AMethod;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v1    # "e":Lscenelib/annotations/el/AMethod;
    goto :goto_5

    .line 134
    :cond_5
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ABlock;

    .line 135
    .local v1, "e":Lscenelib/annotations/el/ABlock;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ABlock;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v1    # "e":Lscenelib/annotations/el/ABlock;
    goto :goto_6

    .line 137
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "el"    # Lscenelib/annotations/el/ADeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ADeclaration;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 142
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 143
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElementWithType;

    .line 146
    .local v1, "e":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElementWithType;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElementWithType;
    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitElement(Lscenelib/annotations/el/AElement;Ljava/util/Set;)Ljava/lang/Void;
    .locals 7
    .param p1, "el"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 221
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 222
    .local v1, "a":Lscenelib/annotations/Annotation;
    invoke-virtual {v1}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    .line 223
    .local v2, "s":Ljava/lang/String;
    const-string v3, ".qual."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 224
    .local v3, "j":I
    if-lez v3, :cond_0

    .line 225
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x2e

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 226
    .local v4, "i":I
    if-lez v4, :cond_0

    sub-int v5, v3, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 227
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v1    # "a":Lscenelib/annotations/Annotation;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_0
    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v0, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitExpression(Lscenelib/annotations/el/AExpression;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpression(Lscenelib/annotations/el/AExpression;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "el"    # Lscenelib/annotations/el/AExpression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AExpression;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 153
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 154
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 157
    .local v1, "e":Lscenelib/annotations/el/AMethod;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/AMethod;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1    # "e":Lscenelib/annotations/el/AMethod;
    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 160
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_2

    .line 162
    :cond_2
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 163
    .restart local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_3

    .line 165
    :cond_3
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 166
    .restart local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_4

    .line 168
    :cond_4
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 169
    .restart local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_5

    .line 171
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitField(Lscenelib/annotations/el/AField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitField(Lscenelib/annotations/el/AField;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitField(Lscenelib/annotations/el/AField;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AField;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 176
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    invoke-virtual {v0, p0, p2}, Lscenelib/annotations/el/AExpression;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitMethod(Lscenelib/annotations/el/AMethod;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lscenelib/annotations/el/AMethod;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "el"    # Lscenelib/annotations/el/AMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AMethod;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 184
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {v0, p0, p2}, Lscenelib/annotations/el/ABlock;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {v0, p0, p2}, Lscenelib/annotations/el/AField;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v0, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 194
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 197
    .local v1, "e":Lscenelib/annotations/el/AField;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/AField;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v1    # "e":Lscenelib/annotations/el/AField;
    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 200
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_2

    .line 202
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "el"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ATypeElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 207
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 208
    .local v1, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, p0, p2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v1    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/ATypeElementWithType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ATypeElementWithType;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 216
    .local p2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
