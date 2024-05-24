.class public Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;
.source "FieldNode.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# instance fields
.field public access:I

.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 101
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;-><init>()V

    .line 102
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->access:I

    .line 103
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->name:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->desc:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->signature:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->value:Ljava/lang/Object;

    .line 107
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 7
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 115
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->access:I

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->desc:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->signature:Ljava/lang/String;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->value:Ljava/lang/Object;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v0

    .line 117
    .local v0, "fv":Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 118
    .local v1, "n":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 119
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 120
    .local v4, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 118
    .end local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v1, v4

    .line 123
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    .line 124
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 125
    .restart local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {v0, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 123
    .end local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 127
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->attrs:Ljava/util/List;

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    move v1, v2

    .line 128
    const/4 v2, 0x0

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_5

    .line 129
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/Attribute;

    invoke-interface {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 131
    :cond_5
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    .line 132
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jaime did not implement yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
