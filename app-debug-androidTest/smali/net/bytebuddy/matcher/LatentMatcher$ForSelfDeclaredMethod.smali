.class public final enum Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
.super Ljava/lang/Enum;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForSelfDeclaredMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;",
        ">;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

.field public static final enum DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

.field public static final enum NOT_DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;


# instance fields
.field private final inverted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    const-string v1, "DECLARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    .line 57
    new-instance v1, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    const-string v2, "NOT_DECLARED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->NOT_DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    .line 47
    filled-new-array {v0, v1}, [Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->$VALUES:[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "inverted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-boolean p3, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->inverted:Z

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
    .locals 1

    .line 47
    sget-object v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->$VALUES:[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 1
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->inverted:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0
.end method
