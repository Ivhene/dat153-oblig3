.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;
.super Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;
.source "ClassAnnotationSceneReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayAnnotationSceneReader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private arrayBuilder:Lscenelib/annotations/ArrayBuilder;

.field private final arrayName:Ljava/lang/String;

.field private final parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1040
    const-class v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    return-void
.end method

.method public constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;)V
    .locals 3
    .param p2, "parent"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "eltType"    # Lscenelib/annotations/field/AnnotationFieldType;

    .line 1049
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    .line 1050
    iget-object v0, p1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->dummyDesc:Ljava/lang/String;

    iget-boolean v1, p2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->visible:Z

    iget-object v2, p2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    invoke-direct {p0, p1, v0, v1, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    .line 1052
    iput-object p2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    .line 1053
    iput-object p3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayName:Ljava/lang/String;

    .line 1054
    const/4 p1, 0x0

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    .line 1055
    return-void
.end method

.method private prepareForElement(Lscenelib/annotations/field/ScalarAFT;)V
    .locals 3
    .param p1, "elementType"    # Lscenelib/annotations/field/ScalarAFT;

    .line 1059
    if-eqz p1, :cond_1

    .line 1060
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayName:Ljava/lang/String;

    new-instance v2, Lscenelib/annotations/field/ArrayAFT;

    invoke-direct {v2, p1}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/AnnotationBuilder;->beginArrayField(Ljava/lang/String;Lscenelib/annotations/field/ArrayAFT;)Lscenelib/annotations/ArrayBuilder;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    .line 1065
    :cond_0
    return-void

    .line 1059
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method supplySubannotation(Ljava/lang/String;Lscenelib/annotations/Annotation;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "annotation"    # Lscenelib/annotations/Annotation;

    .line 1128
    new-instance v0, Lscenelib/annotations/field/AnnotationAFT;

    invoke-virtual {p2}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/field/AnnotationAFT;-><init>(Lscenelib/annotations/el/AnnotationDef;)V

    invoke-direct {p0, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->prepareForElement(Lscenelib/annotations/field/ScalarAFT;)V

    .line 1129
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    if-eqz v0, :cond_0

    .line 1130
    invoke-interface {v0, p2}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 1131
    return-void

    .line 1129
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1074
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    sget-object v0, Lscenelib/annotations/field/ClassTokenAFT;->ctaft:Lscenelib/annotations/field/ClassTokenAFT;

    .line 1078
    .local v0, "aft":Lscenelib/annotations/field/ScalarAFT;
    :try_start_0
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    .line 1081
    goto :goto_0

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load Class for Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1083
    .end local v0    # "aft":Lscenelib/annotations/field/ScalarAFT;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1084
    .local v0, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v1

    move-object v0, v1

    .line 1087
    .local v0, "aft":Lscenelib/annotations/field/ScalarAFT;
    :goto_0
    if-eqz v0, :cond_2

    .line 1088
    invoke-direct {p0, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->prepareForElement(Lscenelib/annotations/field/ScalarAFT;)V

    .line 1089
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    if-eqz v1, :cond_1

    .line 1090
    invoke-interface {v1, p2}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 1091
    return-void

    .line 1089
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1087
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 1112
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-direct {v0, v1, p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1103
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Multidimensional array in annotation!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public visitEnd()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    if-eqz v0, :cond_0

    .line 1119
    invoke-interface {v0}, Lscenelib/annotations/ArrayBuilder;->finish()V

    goto :goto_0

    .line 1122
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscenelib/annotations/AnnotationBuilder;->addEmptyArrayField(Ljava/lang/String;)V

    .line 1124
    :goto_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1096
    new-instance v0, Lscenelib/annotations/field/EnumAFT;

    invoke-static {p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/field/EnumAFT;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->prepareForElement(Lscenelib/annotations/field/ScalarAFT;)V

    .line 1097
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;->arrayBuilder:Lscenelib/annotations/ArrayBuilder;

    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0, p3}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 1099
    return-void

    .line 1097
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
