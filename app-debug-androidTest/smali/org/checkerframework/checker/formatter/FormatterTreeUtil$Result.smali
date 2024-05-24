.class public Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
.super Ljava/lang/Object;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final location:Lcom/sun/source/tree/ExpressionTree;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V
    .locals 0
    .param p2, "location"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sun/source/tree/ExpressionTree;",
            ")V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value:Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->location:Lcom/sun/source/tree/ExpressionTree;

    .line 115
    return-void
.end method


# virtual methods
.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value:Ljava/lang/Object;

    return-object v0
.end method
