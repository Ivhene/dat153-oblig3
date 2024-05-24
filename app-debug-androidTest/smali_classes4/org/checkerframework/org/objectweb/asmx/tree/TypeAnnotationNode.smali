.class public Lorg/checkerframework/org/objectweb/asmx/tree/TypeAnnotationNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
.source "TypeAnnotationNode.java"


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;)V
    .locals 0
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
