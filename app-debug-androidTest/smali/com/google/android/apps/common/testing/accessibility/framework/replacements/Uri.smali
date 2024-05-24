.class public final Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
.super Ljava/lang/Object;
.source "Uri.java"


# instance fields
.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rfc2396UriString"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;->uri:Ljava/net/URI;

    .line 26
    return-void
.end method


# virtual methods
.method public isAbsolute()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isRelative()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;->isAbsolute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
