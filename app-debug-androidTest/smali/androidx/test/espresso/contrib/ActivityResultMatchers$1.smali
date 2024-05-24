.class Landroidx/test/espresso/contrib/ActivityResultMatchers$1;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ActivityResultMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/ActivityResultMatchers;->hasResultData(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/app/Instrumentation$ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$intentMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010
        }
        names = {
            "arg0",
            "val$intentMatcher"
        }
    .end annotation

    .line 37
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p2, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;->val$intentMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0, p1}, Lorg/hamcrest/TypeSafeMatcher;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected describeMismatchSafely(Landroid/app/Instrumentation$ActivityResult;Lorg/hamcrest/Description;)V
    .locals 2
    .param p1, "item"    # Landroid/app/Instrumentation$ActivityResult;
    .param p2, "mismatchDescription"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "mismatchDescription"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;->val$intentMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 52
    return-void
.end method

.method protected bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "item",
            "mismatchDescription"
        }
    .end annotation

    .line 37
    check-cast p1, Landroid/app/Instrumentation$ActivityResult;

    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;->describeMismatchSafely(Landroid/app/Instrumentation$ActivityResult;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;->val$intentMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 42
    return-void
.end method

.method protected matchesSafely(Landroid/app/Instrumentation$ActivityResult;)Z
    .locals 2
    .param p1, "item"    # Landroid/app/Instrumentation$ActivityResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;->val$intentMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "item"
        }
    .end annotation

    .line 37
    check-cast p1, Landroid/app/Instrumentation$ActivityResult;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/contrib/ActivityResultMatchers$1;->matchesSafely(Landroid/app/Instrumentation$ActivityResult;)Z

    move-result p1

    return p1
.end method
