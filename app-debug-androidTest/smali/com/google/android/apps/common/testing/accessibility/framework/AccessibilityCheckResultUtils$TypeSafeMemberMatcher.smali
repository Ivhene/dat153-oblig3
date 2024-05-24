.class abstract Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "AccessibilityCheckResultUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
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

    .line 204
    .local p0, "this":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;, "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher<TT;>;"
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 205
    const-string v0, "with %s: "

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;->memberDescription:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 207
    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 211
    .local p0, "this":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;, "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;->memberDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 213
    return-void
.end method
