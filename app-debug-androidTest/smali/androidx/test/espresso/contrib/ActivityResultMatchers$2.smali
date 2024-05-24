.class Landroidx/test/espresso/contrib/ActivityResultMatchers$2;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ActivityResultMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/ActivityResultMatchers;->hasResultCode(I)Lorg/hamcrest/Matcher;
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
.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010
        }
        names = {
            "arg0",
            "val$resultCode"
        }
    .end annotation

    .line 61
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput p2, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$2;->val$resultCode:I

    invoke-direct {p0, p1}, Lorg/hamcrest/TypeSafeMatcher;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 3
    .param p1, "description"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 64
    iget v0, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$2;->val$resultCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "has result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 65
    return-void
.end method

.method protected matchesSafely(Landroid/app/Instrumentation$ActivityResult;)Z
    .locals 2
    .param p1, "activityResult"    # Landroid/app/Instrumentation$ActivityResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityResult"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v0

    iget v1, p0, Landroidx/test/espresso/contrib/ActivityResultMatchers$2;->val$resultCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "activityResult"
        }
    .end annotation

    .line 61
    check-cast p1, Landroid/app/Instrumentation$ActivityResult;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/contrib/ActivityResultMatchers$2;->matchesSafely(Landroid/app/Instrumentation$ActivityResult;)Z

    move-result p1

    return p1
.end method
