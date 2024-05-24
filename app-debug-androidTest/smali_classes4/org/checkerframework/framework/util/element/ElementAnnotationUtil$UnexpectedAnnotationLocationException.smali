.class public Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
.super Ljava/lang/Exception;
.source "ElementAnnotationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnexpectedAnnotationLocationException"
.end annotation


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 626
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;

    .line 617
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
