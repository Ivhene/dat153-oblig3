.class public Lorg/checkerframework/framework/util/Contract$Precondition;
.super Lorg/checkerframework/framework/util/Contract;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Precondition"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 145
    sget-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->PRECONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/framework/util/Contract;-><init>(Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 146
    return-void
.end method
