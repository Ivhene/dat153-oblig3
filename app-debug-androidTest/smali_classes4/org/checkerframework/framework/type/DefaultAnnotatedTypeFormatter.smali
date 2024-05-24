.class public Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;
.super Ljava/lang/Object;
.source "DefaultAnnotatedTypeFormatter.java"

# interfaces
.implements Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;
    }
.end annotation


# instance fields
.field protected final formattingVisitor:Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    new-instance v0, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;-><init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;->formattingVisitor:Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V
    .locals 1
    .param p1, "formatter"    # Lorg/checkerframework/framework/util/AnnotationFormatter;
    .param p2, "printVerboseGenerics"    # Z
    .param p3, "defaultPrintInvisibleAnnos"    # Z

    .line 67
    new-instance v0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;-><init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;-><init>(Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "printVerboseGenerics"    # Z
    .param p2, "defaultPrintInvisibleAnnos"    # Z

    .line 53
    new-instance v0, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;-><init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    .line 54
    return-void
.end method


# virtual methods
.method public format(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 80
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;->formattingVisitor:Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->resetPrintVerboseSettings()V

    .line 81
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;->formattingVisitor:Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "printVerbose"    # Z

    .line 86
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;->formattingVisitor:Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->setVerboseSettings(Z)V

    .line 87
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;->formattingVisitor:Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
