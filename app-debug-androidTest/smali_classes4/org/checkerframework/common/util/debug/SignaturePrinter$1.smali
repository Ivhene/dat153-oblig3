.class Lorg/checkerframework/common/util/debug/SignaturePrinter$1;
.super Lorg/checkerframework/framework/source/SourceChecker;
.source "SignaturePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/common/util/debug/SignaturePrinter;->init(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/util/debug/SignaturePrinter;


# direct methods
.method constructor <init>(Lorg/checkerframework/common/util/debug/SignaturePrinter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/util/debug/SignaturePrinter;

    .line 93
    iput-object p1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$1;->this$0:Lorg/checkerframework/common/util/debug/SignaturePrinter;

    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;"
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAnnotationProvider is not implemented for this class."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
