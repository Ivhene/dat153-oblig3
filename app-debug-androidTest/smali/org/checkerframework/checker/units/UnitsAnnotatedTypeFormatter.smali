.class public Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;
.super Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;
.source "UnitsAnnotatedTypeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;,
        Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsFormattingVisitor;
    }
.end annotation


# instance fields
.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected final elements:Ljavax/lang/model/util/Elements;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 23
    new-instance v0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsFormattingVisitor;

    new-instance v1, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;

    invoke-direct {v1, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 27
    const-string v2, "printVerboseGenerics"

    invoke-virtual {p1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsFormattingVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    .line 23
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;-><init>(Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;)V

    .line 30
    iput-object p1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 31
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;->elements:Ljavax/lang/model/util/Elements;

    .line 32
    return-void
.end method
