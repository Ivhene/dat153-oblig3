.class public Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsFormattingVisitor;
.super Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;
.source "UnitsAnnotatedTypeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UnitsFormattingVisitor"
.end annotation


# instance fields
.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected final elements:Ljavax/lang/model/util/Elements;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "annoFormatter"    # Lorg/checkerframework/framework/util/AnnotationFormatter;
    .param p3, "printVerboseGenerics"    # Z
    .param p4, "defaultInvisiblesSetting"    # Z

    .line 45
    invoke-direct {p0, p2, p3, p4}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;-><init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    .line 46
    iput-object p1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsFormattingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsFormattingVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 48
    return-void
.end method
