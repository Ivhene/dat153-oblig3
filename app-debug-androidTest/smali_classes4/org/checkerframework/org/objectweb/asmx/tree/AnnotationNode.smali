.class public Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
.super Ljava/lang/Object;
.source "AnnotationNode.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field public desc:Ljava/lang/String;

.field public values:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "values"    # Ljava/util/List;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    .line 78
    return-void
.end method

.method static accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 172
    .local v0, "typeconst":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {p0, p1, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "typeconst":[Ljava/lang/String;
    goto :goto_1

    :cond_0
    instance-of v0, p2, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 175
    .local v0, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 176
    .end local v0    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    goto :goto_1

    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 177
    invoke-interface {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 178
    .local v0, "v":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 179
    .local v1, "array":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 180
    const/4 v3, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "j":I
    :cond_2
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 183
    .end local v0    # "v":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .end local v1    # "array":Ljava/util/List;
    goto :goto_1

    .line 184
    :cond_3
    invoke-interface {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V
    .locals 4
    .param p1, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "value":Ljava/lang/Object;
    invoke-static {p1, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 156
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "annotation":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "array":Ljava/util/List;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    invoke-direct {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public visitEnd()V
    .locals 0

    .line 136
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->values:Ljava/util/List;

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method
