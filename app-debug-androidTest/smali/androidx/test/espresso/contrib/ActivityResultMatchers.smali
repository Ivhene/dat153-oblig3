.class public final Landroidx/test/espresso/contrib/ActivityResultMatchers;
.super Ljava/lang/Object;
.source "ActivityResultMatchers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static hasResultCode(I)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "resultCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/app/Instrumentation$ActivityResult;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Landroidx/test/espresso/contrib/ActivityResultMatchers$2;

    const-class v1, Landroid/app/Instrumentation$ActivityResult;

    invoke-direct {v0, v1, p0}, Landroidx/test/espresso/contrib/ActivityResultMatchers$2;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public static hasResultData(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intentMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/content/Intent;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/app/Instrumentation$ActivityResult;",
            ">;"
        }
    .end annotation

    .line 37
    .local p0, "intentMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Landroid/content/Intent;>;"
    new-instance v0, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;

    const-class v1, Landroid/app/Instrumentation$ActivityResult;

    invoke-direct {v0, v1, p0}, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;-><init>(Ljava/lang/Class;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
