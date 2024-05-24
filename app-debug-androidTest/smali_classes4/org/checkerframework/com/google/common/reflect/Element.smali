.class Lorg/checkerframework/com/google/common/reflect/Element;
.super Ljava/lang/reflect/AccessibleObject;
.source "Element.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# instance fields
.field private final accessibleObject:Ljava/lang/reflect/AccessibleObject;

.field private final member:Ljava/lang/reflect/Member;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/reflect/AccessibleObject;",
            ":",
            "Ljava/lang/reflect/Member;",
            ">(TM;)V"
        }
    .end annotation

    .line 39
    .local p1, "member":Ljava/lang/reflect/AccessibleObject;, "TM;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 40
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    .line 42
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 162
    instance-of v0, p1, Lorg/checkerframework/com/google/common/reflect/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/reflect/Element;

    .line 164
    .local v0, "that":Lorg/checkerframework/com/google/common/reflect/Element;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/Element;->getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 166
    .end local v0    # "that":Lorg/checkerframework/com/google/common/reflect/Element;
    :cond_1
    return v1
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 56
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getModifiers()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAbstract()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public final isAccessible()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public final isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 51
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final isNative()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v0

    return v0
.end method

.method public final isPackagePrivate()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public final isStatic()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public final isSynchronized()Z
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynchronized(I)Z

    move-result v0

    return v0
.end method

.method public final isSynthetic()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method final isTransient()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    return v0
.end method

.method final isVolatile()Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v0

    return v0
.end method

.method public final setAccessible(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Element;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
