.class public Lnet/bytebuddy/utility/privilege/SetAccessibleAction;
.super Ljava/lang/Object;
.source "SetAccessibleAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/AccessibleObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final accessibleObject:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lnet/bytebuddy/utility/privilege/SetAccessibleAction;, "Lnet/bytebuddy/utility/privilege/SetAccessibleAction<TT;>;"
    .local p1, "accessibleObject":Ljava/lang/reflect/AccessibleObject;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    check-cast p1, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;

    iget-object p1, p1, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 28
    .local p0, "this":Lnet/bytebuddy/utility/privilege/SetAccessibleAction;, "Lnet/bytebuddy/utility/privilege/SetAccessibleAction<TT;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->run()Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lnet/bytebuddy/utility/privilege/SetAccessibleAction;, "Lnet/bytebuddy/utility/privilege/SetAccessibleAction<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 50
    iget-object v0, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    return-object v0
.end method
