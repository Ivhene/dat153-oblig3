.class Lorg/mockito/internal/matchers/text/FormattedText;
.super Ljava/lang/Object;
.source "FormattedText.java"


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/matchers/text/FormattedText;->text:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mockito/internal/matchers/text/FormattedText;->text:Ljava/lang/String;

    return-object v0
.end method
