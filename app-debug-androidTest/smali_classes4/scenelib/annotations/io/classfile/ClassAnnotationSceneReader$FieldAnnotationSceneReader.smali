.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;
.super Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;
.source "ClassAnnotationSceneReader.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldAnnotationSceneReader"
.end annotation


# instance fields
.field private final aField:Lscenelib/annotations/el/AElement;

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;


# direct methods
.method public constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lscenelib/annotations/el/AElement;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;
    .param p6, "aField"    # Lscenelib/annotations/el/AElement;

    .line 1157
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    .line 1164
    iput-object p6, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;->aField:Lscenelib/annotations/el/AElement;

    .line 1165
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 1170
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;->aField:Lscenelib/annotations/el/AElement;

    invoke-direct {v0, v1, p1, p2, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    return-object v0
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 1176
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;->aField:Lscenelib/annotations/el/AElement;

    iget-object v2, v2, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, v1, p1, p2, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    return-object v0
.end method
