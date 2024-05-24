.class public Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;
.source "ClassNode.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# instance fields
.field public access:I

.field public fields:Ljava/util/List;

.field public innerClasses:Ljava/util/List;

.field public interfaces:Ljava/util/List;

.field public methods:Ljava/util/List;

.field public name:Ljava/lang/String;

.field public outerClass:Ljava/lang/String;

.field public outerMethod:Ljava/lang/String;

.field public outerMethodDesc:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public sourceDebug:Ljava/lang/String;

.field public sourceFile:Ljava/lang/String;

.field public superName:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->interfaces:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->innerClasses:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->fields:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->methods:Ljava/util/List;

    .line 153
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 8
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 247
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 248
    .local v0, "interfaces":[Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 249
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->version:I

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->access:I

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->signature:Ljava/lang/String;

    iget-object v6, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->superName:Ljava/lang/String;

    move-object v1, p1

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->sourceFile:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->outerClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 256
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->outerMethod:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 261
    .local v1, "n":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 262
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 263
    .local v4, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {p1, v5, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 261
    .end local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 265
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v1, v4

    .line 266
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_6

    .line 267
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 268
    .restart local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 266
    .end local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 270
    :cond_6
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->attrs:Ljava/util/List;

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    move v1, v2

    .line 271
    const/4 v2, 0x0

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_8

    .line 272
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/Attribute;

    invoke-interface {p1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 275
    :cond_8
    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 276
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;

    invoke-virtual {v3, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 279
    :cond_9
    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 280
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;

    invoke-virtual {v3, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 283
    :cond_a
    const/4 v2, 0x0

    :goto_8
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 284
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;

    invoke-virtual {v3, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 287
    :cond_b
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 288
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 167
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->version:I

    .line 168
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->access:I

    .line 169
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->name:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->signature:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->superName:Ljava/lang/String;

    .line 172
    if-eqz p6, :cond_0

    .line 173
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 234
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 212
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .local v0, "fn":Lorg/checkerframework/org/objectweb/asmx/tree/FieldNode;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 198
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    .local v0, "icn":Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 224
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    .local v0, "mn":Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->outerClass:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->outerMethod:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->sourceFile:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jaime did not implement yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
