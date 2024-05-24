.class public Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "MemberRemoval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberRemoval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MemberRemovingClassVisitor"
.end annotation


# static fields
.field private static final REMOVE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

.field private static final REMOVE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;


# instance fields
.field private final fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->REMOVE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

    .line 163
    sput-object v0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->REMOVE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p2, "fieldMatcher":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p3, "methodMatcher":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p4, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p5, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription;>;"
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    .line 200
    iput-object p2, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 201
    iput-object p3, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 202
    iput-object p4, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->fields:Ljava/util/Map;

    .line 203
    iput-object p5, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->methods:Ljava/util/Map;

    .line 204
    return-void
.end method


# virtual methods
.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 2
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->fields:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 209
    .local v0, "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v1, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->REMOVE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

    goto :goto_0

    .line 211
    :cond_0
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 2
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exception"    # [Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->methods:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription;

    .line 217
    .local v0, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v1, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/asm/MemberRemoval$MemberRemovingClassVisitor;->REMOVE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    goto :goto_0

    .line 219
    :cond_0
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    .line 217
    :goto_0
    return-object v1
.end method
