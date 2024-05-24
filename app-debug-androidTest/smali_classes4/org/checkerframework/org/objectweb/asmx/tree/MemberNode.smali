.class public abstract Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;
.super Ljava/lang/Object;
.source "MemberNode.java"


# instance fields
.field public attrs:Ljava/util/List;

.field public invisibleAnnotations:Ljava/util/List;

.field public visibleAnnotations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 88
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 90
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->visibleAnnotations:Ljava/util/List;

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->invisibleAnnotations:Ljava/util/List;

    .line 98
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_0
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 109
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->attrs:Ljava/util/List;

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 119
    return-void
.end method
