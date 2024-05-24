.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;
.super Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;
.source "ClassAnnotationSceneWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;


# direct methods
.method constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;I)V
    .locals 0
    .param p1, "this$1"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;
    .param p2, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p3, "methodVisitor"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .param p4, "start"    # I

    .line 1368
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;->this$1:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;

    invoke-direct {p0, p2, p3, p4}, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;I)V

    return-void
.end method


# virtual methods
.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 1372
    const/4 v0, 0x1

    aget-object v0, p4, v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Handle;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Handle;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;->getMethodCodeOffset()I

    move-result v1

    .line 1374
    .local v1, "off":I
    const-string v2, "<init>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1375
    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;->this$1:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;

    iget-object v2, v2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->constrs:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1377
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1378
    .local v2, "ix":I
    if-ltz v2, :cond_1

    .line 1379
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1381
    :cond_1
    const-string v3, "lambda$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1382
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;->this$1:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;

    iget-object v3, v3, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->lambdas:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1385
    .end local v2    # "ix":I
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lscenelib/annotations/io/classfile/MethodCodeOffsetAdapter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 1386
    return-void
.end method
