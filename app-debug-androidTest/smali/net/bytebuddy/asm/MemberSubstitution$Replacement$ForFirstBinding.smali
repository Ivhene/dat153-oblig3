.class public Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForFirstBinding"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final replacements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement;",
            ">;)V"
        }
    .end annotation

    .line 2158
    .local p1, "replacements":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/MemberSubstitution$Replacement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2159
    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    .line 2160
    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 4
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .param p4, "writeAccess"    # Z

    .line 2169
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    .line 2170
    .local v1, "replacement":Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    invoke-interface {v1, p1, p2, p3, p4}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v2

    .line 2171
    .local v2, "binding":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    invoke-interface {v2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2172
    return-object v2

    .line 2174
    .end local v1    # "replacement":Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    .end local v2    # "binding":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    :cond_0
    goto :goto_0

    .line 2175
    :cond_1
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object v0
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 8
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p4, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p5, "invocationType"    # Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    .line 2186
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    .line 2187
    .local v1, "replacement":Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v2

    .line 2188
    .local v2, "binding":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    invoke-interface {v2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2189
    return-object v2

    .line 2191
    .end local v1    # "replacement":Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    .end local v2    # "binding":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    :cond_0
    goto :goto_0

    .line 2192
    :cond_1
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
