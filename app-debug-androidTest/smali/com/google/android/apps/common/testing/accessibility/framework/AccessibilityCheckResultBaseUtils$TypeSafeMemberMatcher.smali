.class abstract Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "AccessibilityCheckResultBaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TypeSafeMemberMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DESCRIPTION_FORMAT_STRING:Ljava/lang/String; = "with %s: "


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final memberDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V
    .locals 2
    .param p1, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;, "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher<TT;>;"
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 240
    const-string v0, "with %s: "

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;->memberDescription:Ljava/lang/String;

    .line 241
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 242
    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 246
    .local p0, "this":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;, "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;->memberDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 248
    return-void
.end method
