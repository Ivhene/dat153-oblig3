.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;
.super Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;
.source "ClassAnnotationSceneReader.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodAnnotationSceneReader"
.end annotation


# instance fields
.field private final aMethod:Lscenelib/annotations/el/AElement;

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;


# direct methods
.method public constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "aMethod"    # Lscenelib/annotations/el/AElement;

    .line 1197
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    .line 1201
    iput-object p5, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->aMethod:Lscenelib/annotations/el/AElement;

    .line 1202
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 1207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 1227
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 4
    .param p1, "parameter"    # I
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 1219
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->aMethod:Lscenelib/annotations/el/AElement;

    check-cast v2, Lscenelib/annotations/el/AMethod;

    iget-object v2, v2, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 1220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    invoke-direct {v0, v1, p2, p3, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    .line 1219
    return-object v0
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 1213
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;->aMethod:Lscenelib/annotations/el/AElement;

    invoke-direct {v0, v1, p1, p2, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    return-object v0
.end method
